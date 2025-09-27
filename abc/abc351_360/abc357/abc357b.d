import std;

void main() {
    string S;
    readf("%s\n", S);

    size_t L = S.length;
    size_t U = S.filter!(s => std.uni.isUpper(s)).walkLength;

    string res = U * 2 > L ? std.uni.toUpper(S) : std.uni.toLower(S);
    res.writeln;
}
