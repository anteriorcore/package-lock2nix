import { strictEqual } from "node:assert/strict";
import { test } from "node:test";
import bencode from "bencode";

test("bencode-encode", () => {
  const encoded = bencode.encode("hello");
  strictEqual(Buffer.from(encoded).toString(), "5:hello");
});
