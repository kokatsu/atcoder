import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = iota(1, N + 1).array;

    bool isRev;
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            int i = (isRev ? N - query[1] : query[1] - 1);
            A[i] = query[2];
        }
        else if (query[0] == 2) {
            isRev = !isRev;
        }
        else {
            int i = (isRev ? N - query[1] : query[1] - 1);
            A[i].writeln;
        }
    }
}
