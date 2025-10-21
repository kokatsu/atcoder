import std;

void main() {
    int N;
    readf("%d\n", N);

    string[] S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    bool ok = S[0 .. N - 1].group.all!(g => g[0] == "salty" || g[1] == 1);

    string res = ok ? "Yes" : "No";
    res.writeln;
}
