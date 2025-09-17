import std;

void main() {
    int N;
    readf("%d\n", N);

    string[] S = new string[](N);
    int M;
    foreach (i; 0 .. N) {
        int C;
        readf("%s %d\n", S[i], C);
        M += C;
    }

    S.sort;

    string res = S[M % N];
    res.writeln;
}
