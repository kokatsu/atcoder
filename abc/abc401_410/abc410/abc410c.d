import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    int[] A = iota(1, N + 1).array;
    int D;
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);
        if (query[0] == 1) {
            A[(query[1] + D - 1) % N] = query[2];
        }
        else if (query[0] == 2) {
            A[(query[1] + D - 1) % N].writeln;
        }
        else {
            D = (D + query[1]) % N;
        }
    }
}
