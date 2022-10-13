import std;

void main() {
    int N;
    readf("%d\n", N);

    bool isOK;
    foreach (i; 1 .. 10) {
        foreach (j; 1 .. 10) {
            isOK |= (i * j == N);
        }
    }

    writeln(isOK ? "Yes" : "No");
}