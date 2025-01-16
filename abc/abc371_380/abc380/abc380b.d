import std;

void main() {
    string S;
    readf("%s\n", S);

    auto res = S.split('|').filter!(x => !x.empty)
        .map!(x => x.length);

    writefln("%(%d %)", res);
}
