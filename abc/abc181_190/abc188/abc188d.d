import std;

struct Plan {
    long day, cost;
}

void main() {
    long N, C;
    readf("%d %d\n", N, C);

    auto heap = new BinaryHeap!(Array!Plan, "a.day > b.day")();
    foreach (_; 0 .. N) {
        long a, b, c;
        readf("%d %d %d\n", a, b, c);

        heap.insert(Plan(a - 1, c));
        heap.insert(Plan(b, -c));
    }

    long res, day, cost;
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        if (f.day > day) {
            res += min(C, cost) * (f.day - day);
            day = f.day;
        }

        cost += f.cost;
    }

    res.writeln;
}
