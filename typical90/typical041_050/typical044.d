import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(int[]);

    int s;
    foreach (_; 0 .. Q) {
        int T, x, y;
        readf("%d %d %d\n", T, x, y);

        if (T == 1) swap(A[(N+x-1-(s%N))%N], A[(N+y-1-(s%N))%N]);
        else if (T == 2) ++s;
        else A[(N+x-1-(s%N))%N].writeln;
    }
}