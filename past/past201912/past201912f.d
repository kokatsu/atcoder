import std;

void main() {
    string S;
    readf("%s\n", S);

    auto words = S.splitter!(Yes.keepSeparators)(regex(r"[A-Z][a-z]*[A-Z]"))
        .filter!(x => !x.empty).array;

    words.sort!((a, b) => a.toUpper < b.toUpper);

    auto res = words.join;
    res.writeln;
}
