import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto L = S.length;
    string P = iota(0, L - 1).filter!(i => std.uni.isUpper(S[i + 1]))
        .array
        .map!(i => S[i])
        .array;

    string res = P.all!(c => T.canFind(c)) ? "Yes" : "No";
    res.writeln;
}
