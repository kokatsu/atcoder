import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto res = S.levenshteinDistance(T);
    res.writeln;
}
