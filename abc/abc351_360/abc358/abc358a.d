import std;

void main() {
    string S, T;
    readf("%s %s\n", S, T);

    string res = S == "AtCoder" && T == "Land" ? "Yes" : "No";
    res.writeln;
}
