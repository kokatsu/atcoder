import std;

void main() {
    dchar[] S;
    readf("%s\n", S);

    S.sort;

    auto G = S.group.array;

    int[] C = new int[](101);
    foreach (g; G) {
        ++C[g[1]];
    }

    string res = C.all!(c => c == 0 || c == 2) ? "Yes" : "No";
    res.writeln;
}
