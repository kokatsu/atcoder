import std;

void main() {
    int Q;
    readf("%d\n", Q);

    long S;
    auto bag = new BinaryHeap!(Array!long, "a > b")();

    foreach (i; 0 .. Q) {
        auto query = readln.chomp.split.to!(long[]);

        if (query[0] == 1) {
            bag.insert(query[1] - S);
        }
        else if (query[0] == 2) {
            S += query[1];
        }
        else {
            auto f = bag.front;
            bag.popFront;

            writeln(f + S);
        }
    }
}
