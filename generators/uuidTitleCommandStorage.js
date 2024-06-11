const { request } = require('https');
const {
    readFileSync,
    writeFileSync
} = require('fs');

function getUUID (username) {
    return new Promise(resolve => {
        request(`https://api.mojang.com/users/profiles/minecraft/${username}?at=${Date.now()}`, response => {
            let data = '';
            response.on('data', chunk => {
                data += chunk;
            });

            response.on('end', () => {
                const uuid = JSON.parse(data).id;
                resolve(`${uuid.slice(0, 8)}-${uuid.slice(8, 12)}-${uuid.slice(12, 16)}-${uuid.slice(16, 20)}-${uuid.slice(20)}`);
            });
        }).end();
    });
}

function toIntArray (uuid) {
    return `[I;${uuid.replace(/-/g, '').match(/.{8}/g).map(str => Number.parseInt(str, 16)).map(num => num & 0x80000000 ? num - 0xffffffff - 1 : num).join(',')}]`;
}

async function generate () {
    let string = "";
    const players = readFileSync('../players.txt').toString().split('\r\n');
    for (const name of players) {
        const uuid = await getUUID(name);
        string += `# ${name}\ndata modify storage display:displays "${toIntArray(uuid)}" set value {string:'{"text":" "}'}\n`;
    }

    writeFileSync('../data/bcaf/functions/generated/set_titles.mcfunction', string);
}

generate();