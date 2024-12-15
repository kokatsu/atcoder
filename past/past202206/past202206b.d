import std;

void main() {
    string S;
    readf("%s\n", S);

    int[string] dict;
    foreach (s; S.slide(2)) {
        ++dict[s.to!string];
    }

    auto kv = dict.byKeyValue.array;
    kv.sort!"a.value == b.value ? a.key < b.key : a.value > b.value";

    auto res = kv[0].key;
    res.writeln;
}
