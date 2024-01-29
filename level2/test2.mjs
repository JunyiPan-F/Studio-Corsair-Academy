#!/usr/bin/env zx

console.log(argv);
const response = JSON.stringify(argv);;
console.log(argv._.filter(a => a !== path.basename(__filename)));
const res = argv._.filter(a => a !== path.basename(__filename));
await $`curl -s ${res}`;
