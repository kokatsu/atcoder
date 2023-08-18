import std;

void main() {
    string[] D;
    while (true) {
        string S;
        readf("%s\n", S);

        D ~= S;
        if (S == "GB") break;
    }

    D.sort;

    string res = D[6];
    res.writeln;
}