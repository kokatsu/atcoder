import std;

void main() {
    DList!string dlist;

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split;

        auto op = query[0].to!int;
        if (op == 1) {
            dlist.insertBack(query[1]);
        }
        else if (op == 2) {
            dlist.front.writeln;
        }
        else {
            dlist.removeFront;
        }
    }
}
