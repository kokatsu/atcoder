import std;

struct Person {
    int id;
    long time;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto noodles = new long[](N);

    auto Q = N.iota.array.heapify!"a > b";
    auto P = new BinaryHeap!(Array!Person, "a.time > b.time")();
    foreach (i; 0 .. M) {
        long T, W, S;
        readf("%d %d %d\n", T, W, S);

        while (!P.empty && P.front.time <= T) {
            Person p = P.front;
            P.removeFront;

            Q.insert(p.id);
        }

        if (Q.empty) {
            continue;
        }

        int q = Q.front;
        Q.removeFront;

        noodles[q] += W;
        P.insert(Person(q, T + S));
    }

    string res = format("%(%d\n%)", noodles);
    res.writeln;
}
