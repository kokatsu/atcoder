import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto cnts = new int[](N + 1);
    foreach (_; 0 .. Q) {
        int i, x;
        readf("%d %d\n", i, x);

        if (i == 1)
            ++cnts[x];
        else if (i == 2)
            cnts[x] = 2;
        else
            writeln(cnts[x] >= 2 ? "Yes" : "No");
    }
}
