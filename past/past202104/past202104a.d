import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = !(S.matchFirst("[0-9]{3}-[0-9]{4}").empty) ? "Yes" : "No";
    res.writeln;
}