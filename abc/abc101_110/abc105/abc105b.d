import std;

void main() {
    int N;
    readf("%d\n", N);

    bool isOK;
    foreach (i; 0 .. N / 4 + 1) {
        int rem = N - i * 4;
        isOK |= (rem % 7 == 0);
    }

    writeln(isOK ? "Yes" : "No");
}
