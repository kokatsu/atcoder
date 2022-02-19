import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto X = readln.chomp.split.to!(int[]);

    auto edge = new int[][](N);
    foreach (_; 0 .. N-1) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        edge[A] ~= B, edge[B] ~= A;
    }

    int l = 20;
    auto list = new int[][](N, l);
    foreach (i; 0 .. N) {
        list[i][] = -1;
        list[i][0] = X[i];
    }

    void f(int pos, int pre = -1) {
        foreach (e; edge[pos]) {
            if (e == pre) continue;
            f(e, pos);
        }

        auto tmp = list[pos];
        foreach (e; edge[pos]) {
            if (e == pre) continue;
            tmp ~= list[e];
        }

        tmp.sort!"a > b";
        list[pos] = tmp[0..l];
    }

    f(0);

    foreach (_; 0 .. Q) {
        int V, K;
        readf("%d %d\n", V, K);

        --V, --K;
        list[V][K].writeln;
    }
}