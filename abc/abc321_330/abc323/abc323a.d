import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = std.range.stride(S[1 .. $], 2).all!"a == '0'" ? "Yes" : "No";
    res.writeln;
}
