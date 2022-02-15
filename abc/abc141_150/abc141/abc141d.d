import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    auto heap = A.heapify;
    foreach (_; 0 .. M) {
        auto f = heap.front;
        heap.popFront;
        heap.insert(f/2);
    }

    long res;
    while (!heap.empty) {
        res += heap.front;
        heap.popFront;
    }

    res.writeln;
}