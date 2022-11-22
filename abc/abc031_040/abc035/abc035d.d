import std;

struct Road {
    long to, cost;
}

void main() {
    long N, M, T;
    readf("%d %d %d\n", N, M, T);

    auto A = readln.chomp.split.to!(long[]);

    auto roads1 = new Road[][](N), roads2 = new Road[][](N);
    foreach (_; 0 .. M) {
        long a, b, c;
        readf("%d %d %d\n", a, b, c);

        --a, --b;
        roads1[a] ~= Road(b, c), roads2[b] ~= Road(a, c);
    }

    auto costs1 = new long[](N), costs2 = new long[](N);
    costs1[1..N] = costs2[1..N] = T + 1;

    void f(long x, ref long[] costs, Road[][] roads) {
        auto heap = new BinaryHeap!(Array!Road, "a.cost > b.cost")();
        heap.insert(Road(0, 0));
        while (!heap.empty) {
            auto fr = heap.front;
            heap.popFront;

            foreach (r; roads[fr.to]) {
                if (costs[r.to] > costs[fr.to] + r.cost) {
                    costs[r.to] = costs[fr.to] + r.cost;
                    heap.insert(Road(r.to, costs[fr.to]+r.cost));
                }
            }
        }
    }

    f(0, costs1, roads1), f(0, costs2, roads2);

    long res;
    foreach (i; 0 .. N) {
        if (T <= costs1[i] + costs2[i]) continue;

        res = max(res, A[i]*(T-costs1[i]-costs2[i]));
    }

    res.writeln;
}