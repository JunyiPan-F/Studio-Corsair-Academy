#!/usr/bin/env zx
// run this file with `zx test2.mjs`

console.log(argv);
const response = JSON.stringify(argv);;
await $`curl -s ${argv._.filter(a => a !== path.basename(__filename))}`;