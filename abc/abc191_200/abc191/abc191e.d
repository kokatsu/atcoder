import std;

struct Road {
    long town, time;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long lim = long.max / 2;

    auto times = new long[](N);
    times[] = lim;

    auto roads = new Road[][](N);
    foreach (_; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;

        if (A == B) times[A] = min(times[A], C);
        else roads[A] ~= Road(B, C);
    }

    auto table = new long[][](N, N);
    foreach (i; 0 .. N) {
        table[i][] = lim;
        table[i][i] = 0;
    }

    foreach (long i, ref t; table) {
        auto heap = new BinaryHeap!(Array!Road, "a.time > b.time")();
        heap.insert(Road(i, 0));

        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            if (t[f.town] < f.time) continue;

            foreach (r; roads[f.town]) {
                if (t[r.town] <= r.time + t[f.town]) continue;

                t[r.town] = r.time + t[f.town];
                heap.insert(Road(r.town, t[r.town]));
            }
        }
    }

    foreach (i, ref t; times) {
        foreach (j; 0 .. N) {
            if (i == j) continue;

            t = min(t, table[i][j]+table[j][i]);
        }
    }

    foreach (t; times) writeln(t == lim ? -1 : t);
}