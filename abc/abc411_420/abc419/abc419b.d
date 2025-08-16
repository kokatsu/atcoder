import std;

void main() {
    int Q;
    readf("%d\n", Q);

    auto heap = new BinaryHeap!(Array!int, "a > b")();
    foreach (_; 0 .. Q) {
        int[] query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            heap.insert(query[1]);
        }
        else {
            int res = heap.front;
            heap.removeFront;

            res.writeln;
        }
    }
}
