import std;

enum int L = 10 ^^ 9;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edges1 = new int[][](N);
    auto edges2 = new int[][](N);
    foreach (i; 0 .. N) {
        string S;
        readf("%s\n", S);

        foreach (j; 0 .. M) {
            if (S[j] == '1' && i + j + 1 < N) {
                edges1[i] ~= i + j + 1;
                edges2[i+j+1] ~= i;
            }
        }
    }

    auto dist1 = new int[](N);
    dist1[1..$] = L;

    int[] heap1;
    heap1 ~= 0;
    while (!heap1.empty) {
        auto f = heap1.front;
        heap1.popFront;

        foreach (e; edges1[f]) {
            if (dist1[e] > dist1[f] + 1) {
                dist1[e] = dist1[f] + 1;
                heap1 ~= e;
            }
        }
    }

    auto dist2 = new int[](N);
    dist2[0..$-1] = L;

    int[] heap2;
    heap2 ~= N - 1;
    while (!heap2.empty) {
        auto f = heap2.front;
        heap2.popFront;

        foreach (e; edges2[f]) {
            if (dist2[e] > dist2[f] + 1) {
                dist2[e] = dist2[f] + 1;
                heap2 ~= e;
            }
        }
    }

    auto res = new int[](N-2);
    foreach (i; 1 .. N-1) {
        if (dist1[N-1] >= L) {
            res[i-1] = -1;
            continue;
        }

        int num = L;
        long p = max(0, i-M);
        foreach (j; p .. i) {
            if (dist1[j] >= L) continue;

            foreach (e; edges1[j]) {
                if (e <= i) continue;
                if (dist2[e] >= L) continue;

                num = min(num, dist1[j]+dist2[e]+1);
            }
        }

        res[i-1] = (num >= L ? -1 : num);
    }

    writefln("%(%s %)", res);
}