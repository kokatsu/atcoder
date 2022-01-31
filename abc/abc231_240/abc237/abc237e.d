import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto H = readln.chomp.split.to!(long[]);

    auto slopes = new long[][](N);
    foreach (i; 0 .. M) {
        long U, V;
        readf("%d %d\n", U, V);

        --U, --V;
        slopes[U] ~= V, slopes[V] ~= U;
    }

    auto happiness = new long[](N);
    happiness[] = long.min / 2;
    happiness[0] = 0;

    long[] heap;
    heap ~= 0;

    long res;
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        foreach (s; slopes[f]) {
            long diff = H[f] - H[s];
            long c = happiness[f] + diff;
            if (diff < 0) c += diff;

            if (happiness[s] < c) {
                happiness[s] = c;
                heap ~= s;
            }

            res = max(res, happiness[s]);
        }
    }

    res.writeln;
}