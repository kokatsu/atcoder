import std;

void main() {
    auto rbt = new RedBlackTree!(int, "a < b")();

    int Q;
    readf("%d\n", Q);

    foreach(_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            rbt.insert(query[1]);
        }
        else if (query[0] == 2) {
            rbt.removeKey(query[1]);
        }
        else {
            auto ub = rbt.upperBound(query[1]-1);
            writeln(ub.empty ? -1 : ub.front);
        }
    }
}