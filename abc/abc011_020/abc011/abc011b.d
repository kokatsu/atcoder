import std;

void main() {
    string S;
    readf("%s\n", S);

    dchar[] res;
    foreach (i, s; S) {
        res ~= (i == 0 ? std.uni.toUpper(s) : std.uni.toLower(s));
    }

    res.writeln;
}