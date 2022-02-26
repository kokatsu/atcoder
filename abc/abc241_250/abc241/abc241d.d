import std;

void main() {
    int Q;
    readf("%d\n", Q);

    auto rbt = new RedBlackTree!(long, "a < b", true)();

    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(long[]);

        if (query[0] == 1) {
            rbt.insert(query[1]);
        }
        else if (query[0] == 2) {
            auto lb = rbt.lowerBound(query[1]+1);
            long num = -1, cnt;
            while (!lb.empty) {
                ++cnt;
                if (cnt >= query[2]) {
                    num = lb.back;
                    break;
                }
                lb.popBack;
            }
            num.writeln;
        }
        else {
            auto ub = rbt.upperBound(query[1]-1);
            long num = -1, cnt;
            while (!ub.empty) {
                ++cnt;
                if (cnt >= query[2]) {
                    num = ub.front;
                    break;
                }
                ub.popFront;
            }
            num.writeln;
        }
    }
}