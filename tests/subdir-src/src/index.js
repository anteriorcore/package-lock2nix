import { readFileSync } from "node:fs";

function main() {
  console.log(
    "hello,",
    readFileSync(import.meta.dirname + "/../test-name.txt", { encoding: "utf-8" }),
  );
}

main();
