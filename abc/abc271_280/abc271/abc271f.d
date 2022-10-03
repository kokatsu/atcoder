import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = new long[][](N);
    foreach (i; 0 .. N) a[i] = readln.chomp.split.to!(long[]);

    void f(long x, long y, long num, long d, long cnt, long h, ref long[][] list) {
        if (cnt >= N -1) {
            list[h] ~= num;
        }
        else {
            long nx = x + d;
            if (0 <= nx && nx < N) {
                f(nx, y, num^a[x][y], d, cnt+1, h, list);
            }

            long ny = y + d;
            if (0 <= ny && ny < N) {
                f(x, ny, num^a[x][y], d, cnt+1, h+d, list);
            }
        }
    }

    auto L = new long[][](N);
    f(0, 0, 0, 1, 0, 0, L);

    auto R = new long[][](N);
    f(N-1, N-1, 0, -1, 0, N-1, R);

    auto list = new long[long][](N);
    foreach (i; 0 .. N) {
        foreach (r; R[i]) {
            ++list[i][r];
        }
    }

    long res;
    foreach (i; 0 .. N) {
        foreach (l; L[i]) {
            long xor = l ^ a[N-1-i][i];
            if (xor in list[i]) res += list[i][xor];
        }
    }

    res.writeln;
}