import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    foreach (i; 1 .. N) {
        if (S[i] == 'J') S[i-1].writeln;
    }
}