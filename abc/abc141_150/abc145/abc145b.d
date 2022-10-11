import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    bool isOK;
    if (N % 2 == 0) {
        int H = N / 2;
        isOK = (S[0..H] == S[H..N]);
    }

    writeln(isOK ? "Yes" : "No");
}