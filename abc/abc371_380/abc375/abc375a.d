import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int res;
    foreach (i; 1 .. N - 1) {
        if (S[i - 1 .. i + 2] == "#.#") {
            ++res;
        }
    }

    res.writeln;
}
