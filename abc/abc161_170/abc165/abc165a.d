import std;

void main() {
    int K, A, B;
    readf("%d\n%d %d\n", K, A, B);

    bool isOK;
    foreach (i; A .. B+1) {
        isOK |= (i % K == 0);
    }

    writeln(isOK ? "OK" : "NG");
}