import std;

struct Pair {
    int a, b;
}

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    bool[Pair] list;
    foreach (_; 0 .. Q) {
        int T, A, B;
        readf("%d %d %d\n", T, A, B);

        auto P = Pair(A, B);
        auto R = Pair(B, A);

        if (T == 1) {
            list[P] = true;
        }
        else if (T == 2) {
            list[P] = false;
        }
        else {
            bool isOK = ((P in list) && list[P] && (R in list) && list[R]);
            writeln(isOK ? "Yes" : "No");
        }
    }
}