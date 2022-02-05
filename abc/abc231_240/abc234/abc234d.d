import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto P = readln.chomp.split.to!(int[]);

    auto heap = new BinaryHeap!(Array!int, "a > b")();

    foreach (i, p; P) {
        heap.insert(p);

        if (heap.length > K) heap.popFront;

        if (i >= K - 1) heap.front.writeln;
    }
}