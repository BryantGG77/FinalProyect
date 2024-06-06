import React from 'react'
import PrimaryButton from '../../components/PrimaryButton';
import Table from 'react-bootstrap/Table';
import useFetch from '../../useFetch';
import './Profile.css';
export default function Profile() {
    const { data, loading, error } = useFetch('http://localhost:8000/users/');

    function DeleteUser(id) {
        fetch(`http://localhost:8000/users/delete/${id}`, {
            method: 'DELETE'
        })
            .then(response => response.json())
            .then(data => console.log(data))
            .catch(error => console.error(error))

        window.location.reload();
    }

    return (
        <>
            <div className='container-profile'>
                <div className='container-table-profile'>
                    <h2 className='title-profile'>Profiles Created</h2>

                    <Table striped bordered hover className='table'>
                        <thead className='trasparent'>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Edit Profile</th>

                            </tr>
                        </thead>
                        <tbody className='trasparent'>
                            {data && data.map((user) => (
                                <tr key={user.id}>
                                    <td className='id-td'>{user.id}</td>
                                    <td>{user.name}</td>
                                    <td>{user.email}</td>
                                    <td>{user.password}</td>
                                    <td className='d-flex justify-content-center align-items-center'>
                                        <button className='btn btn-danger btn-edit-profile' onClick={() => DeleteUser(user.id)}>Delete</button>
                                    </td>
                                </tr>
                            ))}
                        </tbody>
                    </Table>

                    <a className='Linked' href="/"> <PrimaryButton label={'Back'} alto={48} ancho={157} /></a>


                </div>

            </div>
        </>


    )
}
