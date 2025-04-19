import std;

void main() {
    string S;
    readf("%s\n", S);

    auto res = S.filter!(c => std.uni.isUpper(c)).array;
    res.writeln;
}
