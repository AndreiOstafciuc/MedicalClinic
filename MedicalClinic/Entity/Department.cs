using System;

namespace Entity
{
    public class Department
    {
        int _id;
        String _name;
        String _description;
        int _floor;

        public Department() { }
        public Department(String name, String description, int floor)
        {
            this._name = name;
            this._description = description;
            this._floor = floor;
        }
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public String Name
        {
            get { return _name; }
            set { _name = value; }
        }
        public String Description
        {
            get { return _description; }
            set { _description = value; }
        }
        public int Floor
        {
            get { return _floor; }
            set { _floor = value; }
        }

    }
}
