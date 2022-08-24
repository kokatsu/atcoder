import std;

void main() {
    int N;
    readf("%d\n", N);

    bool isOK;
    int cnt;
    foreach (_; 0 .. N) {
        int D1, D2;
        readf("%d %d\n", D1, D2);

        if (D1 == D2) ++cnt;
        else cnt = 0;

        isOK |= (cnt >= 3);
    }

    writeln(isOK ? "Yes" : "No");
}