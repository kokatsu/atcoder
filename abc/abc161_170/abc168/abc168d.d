import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edge = new int[][](N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        edge[A] ~= B, edge[B] ~= A;
    }

    auto signposts = new int[](N);
    signposts[0] = int.max;

    int[] que = [0];
    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        foreach (e; edge[f]) {
            if (signposts[e] > 0) continue;

            signposts[e] = f + 1;
            que ~= e;
        }
    }

    signposts.popFront;

    writeln("Yes");
    foreach (s; signposts) s.writeln;
}