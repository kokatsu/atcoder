import std;

void main() {
    string S;
    readfln("%s", S);

    string res = "Of" ~ std.uni.toLower(S);
    res.writeln;
}
