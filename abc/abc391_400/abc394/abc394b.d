import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    S.sort!((a, b) => a.length < b.length);

    string res = S.join("");
    res.writeln;
}
