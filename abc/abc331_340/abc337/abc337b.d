import std;

void main() {
    string S;
    readf("%s\n", S);

    auto G = S.group.array;

    auto L = G.length;
    string res = "No";
    if (L <= 3) {
        bool isOk = true;
        foreach (i; 1 .. L) {
            isOk &= G[i - 1] < G[i];
        }
        if (isOk)
            res = "Yes";
    }

    res.writeln;
}
