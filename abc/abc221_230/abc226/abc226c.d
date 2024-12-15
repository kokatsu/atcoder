import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = new long[](N + 1);
    auto K = new long[](N + 1);
    auto A = new long[][](N + 1);
    foreach (i; 1 .. N + 1) {
        auto input = readln.chomp.split.to!(long[]);
        T[i] = input[0], K[i] = input[1];
        A[i] = input[2 .. $];
    }

    auto learned = new bool[](N + 1);
    auto que = A[N];
    foreach (q; que) {
        learned[q] = true;
    }
    long res = T[N];
    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        learned[f] = true;
        res += T[f];

        foreach (a; A[f]) {
            if (learned[a]) {
                continue;
            }

            learned[a] = true;
            que ~= a;
        }
    }

    res.writeln;
}
