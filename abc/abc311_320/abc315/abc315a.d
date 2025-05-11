import std;

enum string VOWELS = "aeiou";

void main() {
    string S;
    readf("%s\n", S);

    auto res = S.filter!(c => !VOWELS.canFind(c));
    res.writeln;
}
