import std;

void main() {
    auto heap = new BinaryHeap!(Array!int, "a > b")();

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            heap.insert(query[1]);
        }
        else if (query[0] == 2) {
            heap.front.writeln;
        }
        else {
            heap.popFront;
        }
    }
}
