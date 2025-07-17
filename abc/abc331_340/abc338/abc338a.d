import std;

void main() {
    string S;
    readf("%s\n", S);

    auto T = S.asCapitalized;

    string res = S.equal(T) ? "Yes" : "No";
    res.writeln;
}
