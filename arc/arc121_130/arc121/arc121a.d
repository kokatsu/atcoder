import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = new long[](N);
    auto y = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", x[i], y[i]);
    }

    auto u = iota(0, N).array;
    auto v = u.dup;
    zip(x, u).sort!((a, b) => a[0] > b[0]);
    zip(y, v).sort!((a, b) => a[0] > b[0]);

    long[long] distance;

    void calcDistance(long[] arr, int[] idx, ulong a, ulong b) {
        long s = N * idx[a] + idx[N - b - 1];
        long t = N * idx[N - b - 1] + idx[a];
        long d = arr[a] - arr[N - b - 1];
        if (s in distance) {
            distance[s] = max(distance[s], d);
        }
        else if (t in distance) {
            distance[t] = max(distance[t], d);
        }
        else {
            distance[s] = d;
        }
    }

    foreach (i; 0 .. 2) {
        foreach (j; 0 .. 2) {
            calcDistance(x, u, i, j);
            calcDistance(y, v, i, j);
        }
    }

    auto list = distance.values;
    list.sort!"a > b";
    list[1].writeln;
}
