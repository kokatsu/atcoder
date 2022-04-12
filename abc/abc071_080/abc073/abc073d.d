import std;

void main() {
    long N, M, R;
    readf("%d %d %d\n", N, M, R);

    auto r = readln.chomp.split.to!(long[]);
    r[] -= 1;

    auto dist = new long[][](N, N);
    foreach (i; 0 .. N) dist[i][] = long.max / 2;

    foreach (_; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        dist[A][B] = C, dist[B][A] = C;
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                long d = dist[j][i] + dist[i][k];
                if (dist[j][k] > d) {
                    dist[j][k] = d;
                }
            }
        }
    }

    long res = long.max;
    foreach (x; r.permutations) {
        long tmp;
        foreach (i; 0 .. R-1) {
            tmp += dist[x[i]][x[i+1]];
        }
        res = min(res, tmp);
    }

    res.writeln;
}