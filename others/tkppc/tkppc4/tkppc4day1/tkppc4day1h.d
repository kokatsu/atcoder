import std;

struct Station {
    long to, time, period;

    long getArrivalTime(long x) {
        return (x + this.period - 1) / this.period * this.period + this.time;
    }
}

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto t = new long[](N);
    foreach (i; 1 .. N - 1)
        readf("%d\n", t[i]);

    auto routes = new Station[][](N);
    foreach (i; 0 .. M) {
        long a, b, c, d;
        readf("%d %d %d %d\n", a, b, c, d);

        --a, --b;

        routes[a] ~= Station(b, c, d);
        routes[b] ~= Station(a, c, d);
    }

    auto times = new long[](N);
    times[1 .. N] = long.max;

    auto queue = DList!long(0);
    while (!queue.empty) {
        auto f = queue.front;
        queue.removeFront;

        foreach (r; routes[f]) {
            long time = r.getArrivalTime(times[f]);
            if (r.to < N - 1)
                time += t[r.to];

            if (time < times[r.to]) {
                times[r.to] = time;
                queue.insertBack(r.to);
            }
        }
    }

    long res = times[N - 1] <= K ? times[N - 1] : -1;
    res.writeln;
}
